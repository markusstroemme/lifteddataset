@global_var_fff = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_memmove_45_badData = external local_unnamed_addr global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_4f9ba:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_memmove_45_badData, align 8
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = bitcast ptr %1 to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-424, i32 400)
  %5 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_memmove_45_badData, align 8
  call void @printIntLine(i32 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_4fa40, label %dec_label_pc_4fa3b

dec_label_pc_4fa3b:                               ; preds = %dec_label_pc_4f9ba
  call void @__stack_chk_fail()
  br label %dec_label_pc_4fa40

dec_label_pc_4fa40:                               ; preds = %dec_label_pc_4fa3b, %dec_label_pc_4f9ba
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4fa42:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4fa8d

dec_label_pc_4fa8d:                               ; preds = %dec_label_pc_4fa8d, %dec_label_pc_4fa42
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4faa4, label %dec_label_pc_4fa8d

dec_label_pc_4faa4:                               ; preds = %dec_label_pc_4fa8d
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_4fb11

dec_label_pc_4fb11:                               ; preds = %dec_label_pc_4fb11, %dec_label_pc_4faa4
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_4fb28, label %dec_label_pc_4fb11

dec_label_pc_4fb28:                               ; preds = %dec_label_pc_4fb11
  store i64 %6, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_memmove_45_badData, align 8
  call void @anon1()
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_4fb97, label %dec_label_pc_4fb92

dec_label_pc_4fb92:                               ; preds = %dec_label_pc_4fb28
  call void @__stack_chk_fail()
  br label %dec_label_pc_4fb97

dec_label_pc_4fb97:                               ; preds = %dec_label_pc_4fb92, %dec_label_pc_4fb28
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


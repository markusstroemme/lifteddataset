@global_var_fff = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_memmove_68_goodG2BData = external local_unnamed_addr global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_5227b:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_522c6

dec_label_pc_522c6:                               ; preds = %dec_label_pc_522c6, %dec_label_pc_5227b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_522dd, label %dec_label_pc_522c6

dec_label_pc_522dd:                               ; preds = %dec_label_pc_522c6
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_5234a

dec_label_pc_5234a:                               ; preds = %dec_label_pc_5234a, %dec_label_pc_522dd
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_52361, label %dec_label_pc_5234a

dec_label_pc_52361:                               ; preds = %dec_label_pc_5234a
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 416
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %10 = add i64 %4, %constexpr5
  %11 = and i64 %10, -16
  store i64 %11, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_memmove_68_goodG2BData, align 8
  call void @anon0()
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_523d0, label %dec_label_pc_523cb

dec_label_pc_523cb:                               ; preds = %dec_label_pc_52361
  call void @__stack_chk_fail()
  br label %dec_label_pc_523d0

dec_label_pc_523d0:                               ; preds = %dec_label_pc_523cb, %dec_label_pc_52361
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5246f:
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_memmove_68_goodG2BData, align 8
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = bitcast ptr %1 to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-424, i32 400)
  %5 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_memmove_68_goodG2BData, align 8
  call void @printIntLine(i32 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_524f5, label %dec_label_pc_524f0

dec_label_pc_524f0:                               ; preds = %dec_label_pc_5246f
  call void @__stack_chk_fail()
  br label %dec_label_pc_524f5

dec_label_pc_524f5:                               ; preds = %dec_label_pc_524f0, %dec_label_pc_5246f
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


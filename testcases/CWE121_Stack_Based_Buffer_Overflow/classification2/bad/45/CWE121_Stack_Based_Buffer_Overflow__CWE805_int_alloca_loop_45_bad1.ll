@global_var_fff = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_loop_45_badData = external local_unnamed_addr global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_3d688:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-432 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_loop_45_badData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-432 to ptr
  store i64 %3, ptr %4, align 8
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = add i64 %0, -416
  %7 = inttoptr i64 %6 to ptr
  %8 = load i32, ptr %7, align 8
  store i32 %8, ptr %2, align 4
  store ptr inttoptr (i64 1 to ptr), ptr %.reg2mem, align 8
  br label %dec_label_pc_3d6d8.dec_label_pc_3d6d8_crit_edge

dec_label_pc_3d6d8.dec_label_pc_3d6d8_crit_edge:  ; preds = %dec_label_pc_3d688, %dec_label_pc_3d6d8.dec_label_pc_3d6d8_crit_edge
  %.reload = load ptr, ptr %.reg2mem, align 8
  %.pre = load ptr, ptr %stack_var_-432, align 8
  %9 = ptrtoint ptr %.reload to i64
  %10 = mul i64 %9, 4
  %11 = ptrtoint ptr %.pre to i64
  %12 = add i64 %10, %11
  %13 = add i64 %6, %10
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i64 %12 to ptr
  store i32 %15, ptr %16, align 4
  %17 = add i64 %9, 1
  %18 = inttoptr i64 %17 to ptr
  %19 = icmp ugt ptr %18, inttoptr (i64 99 to ptr)
  store ptr %18, ptr %.reg2mem, align 8
  br i1 %19, label %dec_label_pc_3d713, label %dec_label_pc_3d6d8.dec_label_pc_3d6d8_crit_edge

dec_label_pc_3d713:                               ; preds = %dec_label_pc_3d6d8.dec_label_pc_3d6d8_crit_edge
  %20 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_loop_45_badData, align 8
  call void @printIntLine(i32 %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  br i1 %22, label %dec_label_pc_3d738, label %dec_label_pc_3d733

dec_label_pc_3d733:                               ; preds = %dec_label_pc_3d713
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d738

dec_label_pc_3d738:                               ; preds = %dec_label_pc_3d733, %dec_label_pc_3d713
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_3d73a:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3d785

dec_label_pc_3d785:                               ; preds = %dec_label_pc_3d785, %dec_label_pc_3d73a
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3d79c, label %dec_label_pc_3d785

dec_label_pc_3d79c:                               ; preds = %dec_label_pc_3d785
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3d809

dec_label_pc_3d809:                               ; preds = %dec_label_pc_3d809, %dec_label_pc_3d79c
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_3d820, label %dec_label_pc_3d809

dec_label_pc_3d820:                               ; preds = %dec_label_pc_3d809
  store i64 %6, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_alloca_loop_45_badData, align 8
  call void @anon1()
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_3d88f, label %dec_label_pc_3d88a

dec_label_pc_3d88a:                               ; preds = %dec_label_pc_3d820
  call void @__stack_chk_fail()
  br label %dec_label_pc_3d88f

dec_label_pc_3d88f:                               ; preds = %dec_label_pc_3d88a, %dec_label_pc_3d820
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

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


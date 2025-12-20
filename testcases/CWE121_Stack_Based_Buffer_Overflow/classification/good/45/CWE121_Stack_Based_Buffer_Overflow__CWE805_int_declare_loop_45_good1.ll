@CWE121_Stack_Based_Buffer_Overflow__CWE805_int_declare_loop_45_goodG2BData = external local_unnamed_addr global ptr
@global_var_bb9a8 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5565a:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-432 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_declare_loop_45_goodG2BData, align 8
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
  br label %dec_label_pc_556aa.dec_label_pc_556aa_crit_edge

dec_label_pc_556aa.dec_label_pc_556aa_crit_edge:  ; preds = %dec_label_pc_5565a, %dec_label_pc_556aa.dec_label_pc_556aa_crit_edge
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
  br i1 %19, label %dec_label_pc_556e5, label %dec_label_pc_556aa.dec_label_pc_556aa_crit_edge

dec_label_pc_556e5:                               ; preds = %dec_label_pc_556aa.dec_label_pc_556aa_crit_edge
  %20 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_declare_loop_45_goodG2BData, align 8
  call void @printIntLine(i32 %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  br i1 %22, label %dec_label_pc_5570a, label %dec_label_pc_55705

dec_label_pc_55705:                               ; preds = %dec_label_pc_556e5
  call void @__stack_chk_fail()
  br label %dec_label_pc_5570a

dec_label_pc_5570a:                               ; preds = %dec_label_pc_55705, %dec_label_pc_556e5
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5570c:
  %dataBadBuffer_-432 = alloca [50 x i32], align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-424 to i64
  %2 = trunc i64 %1 to i32
  %3 = insertvalue [50 x i32] undef, i32 %2, 0
  store [50 x i32] %3, ptr %dataBadBuffer_-432, align 8
  %4 = bitcast ptr %dataBadBuffer_-432 to ptr
  %5 = load i64, ptr %4, align 8
  store i64 %5, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_int_declare_loop_45_goodG2BData, align 8
  call void @anon0()
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_55765, label %dec_label_pc_55760

dec_label_pc_55760:                               ; preds = %dec_label_pc_5570c
  call void @__stack_chk_fail()
  br label %dec_label_pc_55765

dec_label_pc_55765:                               ; preds = %dec_label_pc_55760, %dec_label_pc_5570c
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


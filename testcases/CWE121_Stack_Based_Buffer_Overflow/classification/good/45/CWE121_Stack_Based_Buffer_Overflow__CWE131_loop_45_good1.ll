@global_var_1000 = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_45_goodG2BData = external local_unnamed_addr global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4cff4:
  %.reg2mem = alloca ptr, align 8
  %stack_var_-64 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_45_goodG2BData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-64 to ptr
  store i64 %3, ptr %4, align 8
  %5 = add i64 %0, -48
  %6 = inttoptr i64 %5 to ptr
  %7 = load i32, ptr %6, align 8
  store i32 %7, ptr %2, align 4
  store ptr inttoptr (i64 1 to ptr), ptr %.reg2mem, align 8
  br label %dec_label_pc_4d04c.dec_label_pc_4d04c_crit_edge

dec_label_pc_4d04c.dec_label_pc_4d04c_crit_edge:  ; preds = %dec_label_pc_4cff4, %dec_label_pc_4d04c.dec_label_pc_4d04c_crit_edge
  %.reload = load ptr, ptr %.reg2mem, align 8
  %.pre = load ptr, ptr %stack_var_-64, align 8
  %8 = ptrtoint ptr %.reload to i64
  %9 = mul i64 %8, 4
  %10 = ptrtoint ptr %.pre to i64
  %11 = add i64 %9, %10
  %12 = add i64 %5, %9
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i64 %11 to ptr
  store i32 %14, ptr %15, align 4
  %16 = add i64 %8, 1
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt ptr %17, inttoptr (i64 9 to ptr)
  store ptr %17, ptr %.reg2mem, align 8
  br i1 %18, label %dec_label_pc_4d075, label %dec_label_pc_4d04c.dec_label_pc_4d04c_crit_edge

dec_label_pc_4d075:                               ; preds = %dec_label_pc_4d04c.dec_label_pc_4d04c_crit_edge
  %19 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_45_goodG2BData, align 8
  call void @printIntLine(i32 %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_4d097, label %dec_label_pc_4d092

dec_label_pc_4d092:                               ; preds = %dec_label_pc_4d075
  call void @__stack_chk_fail()
  br label %dec_label_pc_4d097

dec_label_pc_4d097:                               ; preds = %dec_label_pc_4d092, %dec_label_pc_4d075
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_4d099:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-24 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_4d0ea

dec_label_pc_4d0ea:                               ; preds = %dec_label_pc_4d0ea, %dec_label_pc_4d099
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_4d101, label %dec_label_pc_4d0ea

dec_label_pc_4d101:                               ; preds = %dec_label_pc_4d0ea
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 48
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  store i64 %5, ptr %stack_var_-24, align 8
  store i64 %5, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE131_loop_45_goodG2BData, align 8
  call void @anon0()
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %1, %6
  br i1 %7, label %dec_label_pc_4d168, label %dec_label_pc_4d163

dec_label_pc_4d163:                               ; preds = %dec_label_pc_4d101
  call void @__stack_chk_fail()
  br label %dec_label_pc_4d168

dec_label_pc_4d168:                               ; preds = %dec_label_pc_4d163, %dec_label_pc_4d101
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@global_var_1000 = external global ptr
@global_var_c0760 = external constant [4 x i8]
@global_var_fff = external global i32
@global_var_ef04c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_505ad:
  %stack_var_-64.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %data_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load i32, ptr @global_var_ef04c, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-64.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_50661, label %dec_label_pc_5060d

dec_label_pc_5060d:                               ; preds = %dec_label_pc_505ad, %dec_label_pc_5060d
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %5 = icmp eq i64 %rsp.0.reload, %0
  %6 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_50624, label %dec_label_pc_5060d

dec_label_pc_50624:                               ; preds = %dec_label_pc_5060d
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 48
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %7 = add i64 %0, %constexpr3
  %8 = and i64 %7, -16
  store i64 %8, ptr %stack_var_-64.0.reg2mem, align 8
  br label %dec_label_pc_50661

dec_label_pc_50661:                               ; preds = %dec_label_pc_50624, %dec_label_pc_505ad
  %stack_var_-64.0.reload = load i64, ptr %stack_var_-64.0.reg2mem, align 8
  store i64 0, ptr %stack_var_-56, align 8
  %9 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %10 = call ptr @memcpy(ptr %9, ptr nonnull %stack_var_-56, i32 40)
  %11 = inttoptr i64 %stack_var_-64.0.reload to ptr
  %12 = load i32, ptr %11, align 16
  call void @printIntLine(i32 %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %1, %13
  br i1 %14, label %dec_label_pc_506c3, label %dec_label_pc_506be

dec_label_pc_506be:                               ; preds = %dec_label_pc_50661
  call void @__stack_chk_fail()
  br label %dec_label_pc_506c3

dec_label_pc_506c3:                               ; preds = %dec_label_pc_506be, %dec_label_pc_50661
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


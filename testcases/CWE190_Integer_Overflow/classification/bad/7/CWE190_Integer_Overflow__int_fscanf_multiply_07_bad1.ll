@global_var_83278 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b802c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1beaa:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load i32, ptr @global_var_b802c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1bef9, label %dec_label_pc_1bed7

dec_label_pc_1bed7:                               ; preds = %dec_label_pc_1beaa
  %4 = load ptr, ptr @global_var_b8080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_83278, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_b802c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_1bef9

dec_label_pc_1bef9:                               ; preds = %dec_label_pc_1bed7, %dec_label_pc_1beaa
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_1bf1d, label %dec_label_pc_1bf04

dec_label_pc_1bf04:                               ; preds = %dec_label_pc_1bef9
  %8 = load i64, ptr %stack_var_-24, align 8
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %dec_label_pc_1bf1d, label %dec_label_pc_1bf0b

dec_label_pc_1bf0b:                               ; preds = %dec_label_pc_1bf04
  %11 = mul i32 %9, 2
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_1bf1d

dec_label_pc_1bf1d:                               ; preds = %dec_label_pc_1bf0b, %dec_label_pc_1bf04, %dec_label_pc_1bef9
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1bf32, label %dec_label_pc_1bf2d

dec_label_pc_1bf2d:                               ; preds = %dec_label_pc_1bf1d
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bf32

dec_label_pc_1bf32:                               ; preds = %dec_label_pc_1bf2d, %dec_label_pc_1bf1d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


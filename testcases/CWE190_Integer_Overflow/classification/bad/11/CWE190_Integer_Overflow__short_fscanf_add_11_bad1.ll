@global_var_71a28 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1b31d:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1b36e, label %dec_label_pc_1b34c

dec_label_pc_1b34c:                               ; preds = %dec_label_pc_1b31d
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_71a28, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_1b36e

dec_label_pc_1b36e:                               ; preds = %dec_label_pc_1b34c, %dec_label_pc_1b31d
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_1b392, label %dec_label_pc_1b37c

dec_label_pc_1b37c:                               ; preds = %dec_label_pc_1b36e
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = add i16 %7, 1
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_1b392

dec_label_pc_1b392:                               ; preds = %dec_label_pc_1b37c, %dec_label_pc_1b36e
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1b3a7, label %dec_label_pc_1b3a2

dec_label_pc_1b3a2:                               ; preds = %dec_label_pc_1b392
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b3a7

dec_label_pc_1b3a7:                               ; preds = %dec_label_pc_1b3a2, %dec_label_pc_1b392
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_5e30b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@global_var_71a28 = external constant [4 x i8]
@global_var_71a48 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1b461:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1b4b2, label %dec_label_pc_1b490

dec_label_pc_1b490:                               ; preds = %dec_label_pc_1b461
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_71a28, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_1b4b2

dec_label_pc_1b4b2:                               ; preds = %dec_label_pc_1b490, %dec_label_pc_1b461
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_1b4f1, label %dec_label_pc_1b4c0

dec_label_pc_1b4c0:                               ; preds = %dec_label_pc_1b4b2
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_1b4e2, label %dec_label_pc_1b4ca

dec_label_pc_1b4ca:                               ; preds = %dec_label_pc_1b4c0
  %9 = add i16 %7, 1
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_1b4f1

dec_label_pc_1b4e2:                               ; preds = %dec_label_pc_1b4c0
  call void @printLine(ptr @global_var_71a48)
  br label %dec_label_pc_1b4f1

dec_label_pc_1b4f1:                               ; preds = %dec_label_pc_1b4e2, %dec_label_pc_1b4ca, %dec_label_pc_1b4b2
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1b506, label %dec_label_pc_1b501

dec_label_pc_1b501:                               ; preds = %dec_label_pc_1b4f1
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b506

dec_label_pc_1b506:                               ; preds = %dec_label_pc_1b501, %dec_label_pc_1b4f1
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


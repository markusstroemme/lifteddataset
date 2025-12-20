@global_var_71818 = external constant [4 x i8]
@global_var_7181c = external constant [21 x i8]
@global_var_71838 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a9028 = external local_unnamed_addr global i32
@global_var_a9140 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a38b:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9028, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1a3d8, label %dec_label_pc_1a3b6

dec_label_pc_1a3b6:                               ; preds = %dec_label_pc_1a38b
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_71818, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_1a3d8

dec_label_pc_1a3d8:                               ; preds = %dec_label_pc_1a3b6, %dec_label_pc_1a38b
  %5 = load i32, ptr @global_var_a9140, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_1a3f3, label %dec_label_pc_1a3e2

dec_label_pc_1a3e2:                               ; preds = %dec_label_pc_1a3d8
  call void @printLine(ptr @global_var_7181c)
  br label %dec_label_pc_1a424

dec_label_pc_1a3f3:                               ; preds = %dec_label_pc_1a3d8
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_1a415, label %dec_label_pc_1a3fd

dec_label_pc_1a3fd:                               ; preds = %dec_label_pc_1a3f3
  %9 = add i16 %7, 1
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_1a424

dec_label_pc_1a415:                               ; preds = %dec_label_pc_1a3f3
  call void @printLine(ptr @global_var_71838)
  br label %dec_label_pc_1a424

dec_label_pc_1a424:                               ; preds = %dec_label_pc_1a415, %dec_label_pc_1a3fd, %dec_label_pc_1a3e2
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1a439, label %dec_label_pc_1a434

dec_label_pc_1a434:                               ; preds = %dec_label_pc_1a424
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a439

dec_label_pc_1a439:                               ; preds = %dec_label_pc_1a434, %dec_label_pc_1a424
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


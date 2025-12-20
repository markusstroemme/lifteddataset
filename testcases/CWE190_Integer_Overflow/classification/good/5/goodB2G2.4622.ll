@global_var_71818 = external constant [4 x i8]
@global_var_71838 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a9028 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a43b:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9028, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1a4c3, label %dec_label_pc_1a488

dec_label_pc_1a488:                               ; preds = %dec_label_pc_1a43b
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_71818, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_a9028, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_1a4c3, label %dec_label_pc_1a492

dec_label_pc_1a492:                               ; preds = %dec_label_pc_1a488
  %6 = load i16, ptr %stack_var_-20, align 2
  %7 = icmp eq i16 %6, 32767
  br i1 %7, label %dec_label_pc_1a4b4, label %dec_label_pc_1a49c

dec_label_pc_1a49c:                               ; preds = %dec_label_pc_1a492
  %8 = add i16 %6, 1
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_1a4c3

dec_label_pc_1a4b4:                               ; preds = %dec_label_pc_1a492
  call void @printLine(ptr @global_var_71838)
  br label %dec_label_pc_1a4c3

dec_label_pc_1a4c3:                               ; preds = %dec_label_pc_1a43b, %dec_label_pc_1a4b4, %dec_label_pc_1a49c, %dec_label_pc_1a488
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1a4d8, label %dec_label_pc_1a4d3

dec_label_pc_1a4d3:                               ; preds = %dec_label_pc_1a4c3
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a4d8

dec_label_pc_1a4d8:                               ; preds = %dec_label_pc_1a4d3, %dec_label_pc_1a4c3
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


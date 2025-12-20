@global_var_71a80 = external constant [4 x i8]
@global_var_71a88 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1b5e6:
  %stack_var_-22 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-22, align 2
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1b639, label %dec_label_pc_1b615

dec_label_pc_1b615:                               ; preds = %dec_label_pc_1b5e6
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_71a80, ptr nonnull %stack_var_-22)
  br label %dec_label_pc_1b63f

dec_label_pc_1b639:                               ; preds = %dec_label_pc_1b5e6
  store i16 2, ptr %stack_var_-22, align 2
  br label %dec_label_pc_1b63f

dec_label_pc_1b63f:                               ; preds = %dec_label_pc_1b639, %dec_label_pc_1b615
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = load i16, ptr %stack_var_-22, align 2
  br i1 %6, label %dec_label_pc_1b665, label %dec_label_pc_1b64d

dec_label_pc_1b64d:                               ; preds = %dec_label_pc_1b63f
  %8 = add i16 %7, 1
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_1b696

dec_label_pc_1b665:                               ; preds = %dec_label_pc_1b63f
  %10 = icmp eq i16 %7, 32767
  br i1 %10, label %dec_label_pc_1b687, label %dec_label_pc_1b66f

dec_label_pc_1b66f:                               ; preds = %dec_label_pc_1b665
  %11 = add i16 %7, 1
  %12 = sext i16 %11 to i32
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_1b696

dec_label_pc_1b687:                               ; preds = %dec_label_pc_1b665
  call void @printLine(ptr @global_var_71a88)
  br label %dec_label_pc_1b696

dec_label_pc_1b696:                               ; preds = %dec_label_pc_1b687, %dec_label_pc_1b66f, %dec_label_pc_1b64d
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_1b6ab, label %dec_label_pc_1b6a6

dec_label_pc_1b6a6:                               ; preds = %dec_label_pc_1b696
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b6ab

dec_label_pc_1b6ab:                               ; preds = %dec_label_pc_1b6a6, %dec_label_pc_1b696
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5e329:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


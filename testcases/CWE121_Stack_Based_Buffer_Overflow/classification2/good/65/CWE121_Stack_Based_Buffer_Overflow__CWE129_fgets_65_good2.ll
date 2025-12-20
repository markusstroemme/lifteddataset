@global_var_b5e44 = external constant [16 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1f65c:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1f6cc, label %dec_label_pc_1f6bb

dec_label_pc_1f6bb:                               ; preds = %dec_label_pc_1f65c
  %5 = call i32 @atoi(ptr nonnull %2)
  br label %dec_label_pc_1f6db

dec_label_pc_1f6cc:                               ; preds = %dec_label_pc_1f65c
  call void @printLine(ptr @global_var_b5e44)
  br label %dec_label_pc_1f6db

dec_label_pc_1f6db:                               ; preds = %dec_label_pc_1f6cc, %dec_label_pc_1f6bb
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1f6fb, label %dec_label_pc_1f6f6

dec_label_pc_1f6f6:                               ; preds = %dec_label_pc_1f6db
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f6fb

dec_label_pc_1f6fb:                               ; preds = %dec_label_pc_1f6f6, %dec_label_pc_1f6db
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


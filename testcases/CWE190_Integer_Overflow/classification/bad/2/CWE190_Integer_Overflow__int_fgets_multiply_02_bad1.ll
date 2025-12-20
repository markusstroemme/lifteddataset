@global_var_80ef0 = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_9eac:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_9f20.thread, label %dec_label_pc_9f20

dec_label_pc_9f20.thread:                         ; preds = %dec_label_pc_9eac
  call void @printLine(ptr @global_var_80ef0)
  br label %dec_label_pc_9f38

dec_label_pc_9f20:                                ; preds = %dec_label_pc_9eac
  %5 = call i32 @atoi(ptr nonnull %2)
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %dec_label_pc_9f38, label %dec_label_pc_9f26

dec_label_pc_9f26:                                ; preds = %dec_label_pc_9f20
  %7 = mul i32 %5, 2
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_9f38

dec_label_pc_9f38:                                ; preds = %dec_label_pc_9f20.thread, %dec_label_pc_9f26, %dec_label_pc_9f20
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_9f4d, label %dec_label_pc_9f48

dec_label_pc_9f48:                                ; preds = %dec_label_pc_9f38
  call void @__stack_chk_fail()
  br label %dec_label_pc_9f4d

dec_label_pc_9f4d:                                ; preds = %dec_label_pc_9f48, %dec_label_pc_9f38
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


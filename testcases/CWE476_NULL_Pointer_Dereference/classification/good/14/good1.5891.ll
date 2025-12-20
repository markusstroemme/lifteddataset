@global_var_48863 = external constant [21 x i8]
@global_var_4a578 = external constant [4 x i8]
@global_var_6d064 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_173f9:
  %0 = load i32, ptr @global_var_6d064, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_17421, label %dec_label_pc_17410

dec_label_pc_17410:                               ; preds = %dec_label_pc_173f9
  call void @printLine(ptr @global_var_48863)
  br label %dec_label_pc_17465

dec_label_pc_17421:                               ; preds = %dec_label_pc_173f9
  %2 = call ptr @malloc(i32 4)
  %3 = bitcast ptr %2 to ptr
  store i32 5, ptr %3, align 4
  call void @printIntLine(i32 5)
  store i32 10, ptr %3, align 4
  call void @printIntLine(i32 10)
  br label %dec_label_pc_17465

dec_label_pc_17465:                               ; preds = %dec_label_pc_17421, %dec_label_pc_17410
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


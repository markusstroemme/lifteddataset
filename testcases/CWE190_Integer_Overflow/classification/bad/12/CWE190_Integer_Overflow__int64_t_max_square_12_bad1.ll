@global_var_8ba50 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_192bb:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_1932d, label %dec_label_pc_19303

dec_label_pc_19303:                               ; preds = %dec_label_pc_192bb
  %4 = select i1 %1, i64 4, i64 1
  call void @printLongLongLine(i64 %4)
  br label %dec_label_pc_19362

dec_label_pc_1932d:                               ; preds = %dec_label_pc_192bb
  br i1 %1, label %dec_label_pc_19338, label %dec_label_pc_19353

dec_label_pc_19338:                               ; preds = %dec_label_pc_1932d
  call void @printLongLongLine(i64 4)
  br label %dec_label_pc_19362

dec_label_pc_19353:                               ; preds = %dec_label_pc_1932d
  call void @printLine(ptr @global_var_8ba50)
  br label %dec_label_pc_19362

dec_label_pc_19362:                               ; preds = %dec_label_pc_19353, %dec_label_pc_19338, %dec_label_pc_19303
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_77ab9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


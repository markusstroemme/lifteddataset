@global_var_8a750 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_10a7d:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i64 2, i64 9223372036854775807
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_10adf, label %dec_label_pc_10ac5

dec_label_pc_10ac5:                               ; preds = %dec_label_pc_10a7d
  %4 = add nuw i64 %., 1
  call void @printLongLongLine(i64 %4)
  br label %dec_label_pc_10b18

dec_label_pc_10adf:                               ; preds = %dec_label_pc_10a7d
  br i1 %1, label %dec_label_pc_10aef, label %dec_label_pc_10b09

dec_label_pc_10aef:                               ; preds = %dec_label_pc_10adf
  %5 = add nuw i64 %., 1
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_10b18

dec_label_pc_10b09:                               ; preds = %dec_label_pc_10adf
  call void @printLine(ptr @global_var_8a750)
  br label %dec_label_pc_10b18

dec_label_pc_10b18:                               ; preds = %dec_label_pc_10b09, %dec_label_pc_10aef, %dec_label_pc_10ac5
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


@global_var_8b0d0 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_14da9:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i64 2, i64 9223372036854775807
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_14e18, label %dec_label_pc_14df8

dec_label_pc_14df8:                               ; preds = %dec_label_pc_14da9
  %4 = mul i64 %., 2
  call void @printLongLongLine(i64 %4)
  br label %dec_label_pc_14e50

dec_label_pc_14e18:                               ; preds = %dec_label_pc_14da9
  br i1 %1, label %dec_label_pc_14e28, label %dec_label_pc_14e41

dec_label_pc_14e28:                               ; preds = %dec_label_pc_14e18
  %5 = mul i64 %., 2
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_14e50

dec_label_pc_14e41:                               ; preds = %dec_label_pc_14e18
  call void @printLine(ptr @global_var_8b0d0)
  br label %dec_label_pc_14e50

dec_label_pc_14e50:                               ; preds = %dec_label_pc_14e41, %dec_label_pc_14e28, %dec_label_pc_14df8
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


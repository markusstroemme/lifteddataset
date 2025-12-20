@global_var_876d0 = external constant [21 x i8]
@global_var_876e8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define i32 @staticReturnsTrue.1327() local_unnamed_addr {
dec_label_pc_4d288:
  ret i32 1
}

define i32 @staticReturnsFalse.1328() local_unnamed_addr {
dec_label_pc_4d297:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4d2f2:
  %0 = call i32 @staticReturnsTrue.1327()
  %1 = call i32 @staticReturnsFalse.1328()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4d339, label %dec_label_pc_4d328

dec_label_pc_4d328:                               ; preds = %dec_label_pc_4d2f2
  call void @printLine(ptr @global_var_876d0)
  br label %dec_label_pc_4d379

dec_label_pc_4d339:                               ; preds = %dec_label_pc_4d2f2
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %dec_label_pc_4d354, label %dec_label_pc_4d36a

dec_label_pc_4d354:                               ; preds = %dec_label_pc_4d339
  call void @printIntLine(i32 0)
  br label %dec_label_pc_4d379

dec_label_pc_4d36a:                               ; preds = %dec_label_pc_4d339
  call void @printLine(ptr @global_var_876e8)
  br label %dec_label_pc_4d379

dec_label_pc_4d379:                               ; preds = %dec_label_pc_4d36a, %dec_label_pc_4d354, %dec_label_pc_4d328
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

declare i32 @puts(ptr) local_unnamed_addr


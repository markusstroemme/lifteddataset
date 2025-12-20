@global_var_487fa = external constant [21 x i8]
@global_var_4a578 = external constant [4 x i8]

define i32 @staticReturnsFalse.577() local_unnamed_addr {
dec_label_pc_16b7a:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_16bf1:
  %0 = call i32 @staticReturnsFalse.577()
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_16c1c, label %dec_label_pc_16c0b

dec_label_pc_16c0b:                               ; preds = %dec_label_pc_16bf1
  call void @printLine(ptr @global_var_487fa)
  br label %dec_label_pc_16c60

dec_label_pc_16c1c:                               ; preds = %dec_label_pc_16bf1
  %2 = call ptr @malloc(i32 4)
  %3 = bitcast ptr %2 to ptr
  store i32 5, ptr %3, align 4
  call void @printIntLine(i32 5)
  store i32 10, ptr %3, align 4
  call void @printIntLine(i32 10)
  br label %dec_label_pc_16c60

dec_label_pc_16c60:                               ; preds = %dec_label_pc_16c1c, %dec_label_pc_16c0b
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


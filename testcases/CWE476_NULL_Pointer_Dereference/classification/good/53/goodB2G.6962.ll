@global_var_48aed = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_1a5d8:
  call void @anon0(ptr null)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_1a658:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_1a6b5:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_1a714:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = icmp eq ptr %data, null
  br i1 %2, label %dec_label_pc_1a73a, label %dec_label_pc_1a72b

dec_label_pc_1a72b:                               ; preds = %dec_label_pc_1a714
  %3 = trunc i64 %1 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_1a749

dec_label_pc_1a73a:                               ; preds = %dec_label_pc_1a714
  call void @printLine(ptr @global_var_48aed)
  br label %dec_label_pc_1a749

dec_label_pc_1a749:                               ; preds = %dec_label_pc_1a73a, %dec_label_pc_1a72b
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

declare i32 @puts(ptr) local_unnamed_addr


@global_var_48ae0 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_1a44a:
  call void @anon0(ptr null)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_1a4ca:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_1a529:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = icmp eq ptr %data, null
  br i1 %2, label %dec_label_pc_1a54f, label %dec_label_pc_1a540

dec_label_pc_1a540:                               ; preds = %dec_label_pc_1a529
  %3 = trunc i64 %1 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_1a55e

dec_label_pc_1a54f:                               ; preds = %dec_label_pc_1a529
  call void @printLine(ptr @global_var_48ae0)
  br label %dec_label_pc_1a55e

dec_label_pc_1a55e:                               ; preds = %dec_label_pc_1a54f, %dec_label_pc_1a540
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


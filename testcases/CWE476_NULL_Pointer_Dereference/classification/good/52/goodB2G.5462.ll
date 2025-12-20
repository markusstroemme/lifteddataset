@global_var_48720 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_154d1:
  call void @anon0(ptr null)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_15551:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_155b4:
  %0 = icmp eq ptr %data, null
  br i1 %0, label %dec_label_pc_155dc, label %dec_label_pc_155cb

dec_label_pc_155cb:                               ; preds = %dec_label_pc_155b4
  %1 = ptrtoint ptr %data to i64
  call void @printLongLine(i64 %1)
  br label %dec_label_pc_155eb

dec_label_pc_155dc:                               ; preds = %dec_label_pc_155b4
  call void @printLine(ptr @global_var_48720)
  br label %dec_label_pc_155eb

dec_label_pc_155eb:                               ; preds = %dec_label_pc_155dc, %dec_label_pc_155cb
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

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


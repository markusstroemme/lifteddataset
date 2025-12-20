@global_var_4873a = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_1584a:
  call void @anon0(ptr null)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_158ca:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_15927:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_15984:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_159e7:
  %0 = icmp eq ptr %data, null
  br i1 %0, label %dec_label_pc_15a0f, label %dec_label_pc_159fe

dec_label_pc_159fe:                               ; preds = %dec_label_pc_159e7
  %1 = ptrtoint ptr %data to i64
  call void @printLongLine(i64 %1)
  br label %dec_label_pc_15a1e

dec_label_pc_15a0f:                               ; preds = %dec_label_pc_159e7
  call void @printLine(ptr @global_var_4873a)
  br label %dec_label_pc_15a1e

dec_label_pc_15a1e:                               ; preds = %dec_label_pc_15a0f, %dec_label_pc_159fe
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


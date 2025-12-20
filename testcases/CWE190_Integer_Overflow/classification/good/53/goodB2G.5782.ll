@global_var_843c0 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_1e16e:
  call void @anon0(i64 9223372036854775807)
  ret void
}

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_1e1fc:
  call void @anon1(i64 %data)
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_1e259:
  call void @anon2(i64 %data)
  ret void
}

define void @anon2(i64 %data) local_unnamed_addr {
dec_label_pc_1e2d0:
  %0 = icmp eq i64 %data, 9223372036854775807
  br i1 %0, label %dec_label_pc_1e30b, label %dec_label_pc_1e2f0

dec_label_pc_1e2f0:                               ; preds = %dec_label_pc_1e2d0
  %1 = add i64 %data, 1
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_1e31a

dec_label_pc_1e30b:                               ; preds = %dec_label_pc_1e2d0
  call void @printLine(ptr @global_var_843c0)
  br label %dec_label_pc_1e31a

dec_label_pc_1e31a:                               ; preds = %dec_label_pc_1e30b, %dec_label_pc_1e2f0
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr


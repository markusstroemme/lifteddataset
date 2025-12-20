@global_var_84388 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_1dfc0:
  call void @anon0(i64 9223372036854775807)
  ret void
}

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_1e04e:
  call void @anon1(i64 %data)
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_1e0c5:
  %0 = icmp eq i64 %data, 9223372036854775807
  br i1 %0, label %dec_label_pc_1e100, label %dec_label_pc_1e0e5

dec_label_pc_1e0e5:                               ; preds = %dec_label_pc_1e0c5
  %1 = add i64 %data, 1
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_1e10f

dec_label_pc_1e100:                               ; preds = %dec_label_pc_1e0c5
  call void @printLine(ptr @global_var_84388)
  br label %dec_label_pc_1e10f

dec_label_pc_1e10f:                               ; preds = %dec_label_pc_1e100, %dec_label_pc_1e0e5
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


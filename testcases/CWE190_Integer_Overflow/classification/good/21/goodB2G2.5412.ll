@global_var_84140 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc1a4 = external local_unnamed_addr global i32

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_1d0da:
  %0 = load i32, ptr @global_var_bc1a4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1d12e, label %dec_label_pc_1d0f4

dec_label_pc_1d0f4:                               ; preds = %dec_label_pc_1d0da
  %2 = icmp eq i64 %data, 9223372036854775807
  br i1 %2, label %dec_label_pc_1d11f, label %dec_label_pc_1d104

dec_label_pc_1d104:                               ; preds = %dec_label_pc_1d0f4
  %3 = add i64 %data, 1
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_1d12e

dec_label_pc_1d11f:                               ; preds = %dec_label_pc_1d0f4
  call void @printLine(ptr @global_var_84140)
  br label %dec_label_pc_1d12e

dec_label_pc_1d12e:                               ; preds = %dec_label_pc_1d11f, %dec_label_pc_1d104, %dec_label_pc_1d0da
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1d131:
  store i32 1, ptr @global_var_bc1a4, align 4
  call void @anon0(i64 9223372036854775807)
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


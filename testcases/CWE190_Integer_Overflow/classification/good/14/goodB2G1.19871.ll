@global_var_8b8c8 = external constant [21 x i8]
@global_var_8b8e0 = external constant [54 x i8]
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_62c0d:
  %0 = load i32, ptr @global_var_bc0a4, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_62c6a, label %dec_label_pc_62c3d

dec_label_pc_62c3d:                               ; preds = %dec_label_pc_62c0d
  call void @printLine(ptr @global_var_8b8c8)
  br label %dec_label_pc_62c79

dec_label_pc_62c6a:                               ; preds = %dec_label_pc_62c0d
  call void @printLine(ptr @global_var_8b8e0)
  br label %dec_label_pc_62c79

dec_label_pc_62c79:                               ; preds = %dec_label_pc_62c6a, %dec_label_pc_62c3d
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

declare i32 @puts(ptr) local_unnamed_addr


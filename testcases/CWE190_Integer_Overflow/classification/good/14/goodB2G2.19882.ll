@global_var_8b8e0 = external constant [54 x i8]
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_62c7c:
  %0 = load i32, ptr @global_var_bc0a4, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_62cd7, label %dec_label_pc_62cc8

dec_label_pc_62cc8:                               ; preds = %dec_label_pc_62c7c
  call void @printLine(ptr @global_var_8b8e0)
  br label %dec_label_pc_62cd7

dec_label_pc_62cd7:                               ; preds = %dec_label_pc_62cc8, %dec_label_pc_62c7c
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


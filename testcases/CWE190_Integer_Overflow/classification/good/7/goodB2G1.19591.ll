@global_var_8b6b0 = external constant [21 x i8]
@global_var_8b6c8 = external constant [54 x i8]
@global_var_bc094 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_61ebb:
  %0 = load i32, ptr @global_var_bc094, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_61f18, label %dec_label_pc_61eeb

dec_label_pc_61eeb:                               ; preds = %dec_label_pc_61ebb
  call void @printLine(ptr @global_var_8b6b0)
  br label %dec_label_pc_61f27

dec_label_pc_61f18:                               ; preds = %dec_label_pc_61ebb
  call void @printLine(ptr @global_var_8b6c8)
  br label %dec_label_pc_61f27

dec_label_pc_61f27:                               ; preds = %dec_label_pc_61f18, %dec_label_pc_61eeb
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


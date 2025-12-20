@global_var_48b3b = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1b06b:
  call void @anon0(i64 0)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1b105:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = icmp eq i64 %myStruct, 0
  br i1 %2, label %dec_label_pc_1b133, label %dec_label_pc_1b124

dec_label_pc_1b124:                               ; preds = %dec_label_pc_1b105
  %3 = trunc i64 %1 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_1b142

dec_label_pc_1b133:                               ; preds = %dec_label_pc_1b105
  call void @printLine(ptr @global_var_48b3b)
  br label %dec_label_pc_1b142

dec_label_pc_1b142:                               ; preds = %dec_label_pc_1b133, %dec_label_pc_1b124
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


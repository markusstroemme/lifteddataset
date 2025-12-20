@global_var_88328 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_486cc:
  call void @anon0(i64 2147483647)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_48770:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, 2147483647
  br i1 %1, label %dec_label_pc_487a4, label %dec_label_pc_4878e

dec_label_pc_4878e:                               ; preds = %dec_label_pc_48770
  %2 = add i32 %0, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_487b3

dec_label_pc_487a4:                               ; preds = %dec_label_pc_48770
  call void @printLine(ptr @global_var_88328)
  br label %dec_label_pc_487b3

dec_label_pc_487b3:                               ; preds = %dec_label_pc_487a4, %dec_label_pc_4878e
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr


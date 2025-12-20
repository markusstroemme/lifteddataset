@global_var_b6ed8 = external constant [21 x i8]
@global_var_b6ef0 = external constant [36 x i8]

define i32 @staticReturnsTrue.465() local_unnamed_addr {
dec_label_pc_2a844:
  ret i32 1
}

define i32 @staticReturnsFalse.466() local_unnamed_addr {
dec_label_pc_2a853:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2a92d:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.465()
  %2 = call i32 @staticReturnsFalse.466()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_2a9e9, label %dec_label_pc_2a972

dec_label_pc_2a972:                               ; preds = %dec_label_pc_2a92d
  call void @printLine(ptr @global_var_b6ed8)
  br label %dec_label_pc_2a9fa

dec_label_pc_2a9e9:                               ; preds = %dec_label_pc_2a92d
  call void @printLine(ptr @global_var_b6ef0)
  br label %dec_label_pc_2a9fa

dec_label_pc_2a9fa:                               ; preds = %dec_label_pc_2a9e9, %dec_label_pc_2a972
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_2aa0f, label %dec_label_pc_2aa0a

dec_label_pc_2aa0a:                               ; preds = %dec_label_pc_2a9fa
  call void @__stack_chk_fail()
  br label %dec_label_pc_2aa0f

dec_label_pc_2aa0f:                               ; preds = %dec_label_pc_2aa0a, %dec_label_pc_2a9fa
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


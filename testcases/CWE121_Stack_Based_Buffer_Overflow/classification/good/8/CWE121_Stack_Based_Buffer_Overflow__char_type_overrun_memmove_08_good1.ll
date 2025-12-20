@global_var_bba68 = external constant [32 x i8]
@global_var_bba88 = external constant [21 x i8]

define i32 @staticReturnsFalse.1184() local_unnamed_addr {
dec_label_pc_718b9:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_71976:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse.1184()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_719b0, label %dec_label_pc_7199f

dec_label_pc_7199f:                               ; preds = %dec_label_pc_71976
  call void @printLine(ptr @global_var_bba88)
  br label %dec_label_pc_719ff

dec_label_pc_719b0:                               ; preds = %dec_label_pc_71976
  call void @printLine(ptr @global_var_bba68)
  store i64 3978425819141910832, ptr %stack_var_-56, align 8
  %3 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %3)
  call void @printLine(ptr @global_var_bba68)
  br label %dec_label_pc_719ff

dec_label_pc_719ff:                               ; preds = %dec_label_pc_719b0, %dec_label_pc_7199f
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_71a14, label %dec_label_pc_71a0f

dec_label_pc_71a0f:                               ; preds = %dec_label_pc_719ff
  call void @__stack_chk_fail()
  br label %dec_label_pc_71a14

dec_label_pc_71a14:                               ; preds = %dec_label_pc_71a0f, %dec_label_pc_719ff
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


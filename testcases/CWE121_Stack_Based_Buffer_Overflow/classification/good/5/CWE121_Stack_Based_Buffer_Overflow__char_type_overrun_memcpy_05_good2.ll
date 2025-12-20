@global_var_bb678 = external constant [32 x i8]
@global_var_ef068 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6f5e5:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef068, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_6f659, label %dec_label_pc_6f60a

dec_label_pc_6f60a:                               ; preds = %dec_label_pc_6f5e5
  call void @printLine(ptr @global_var_bb678)
  store i64 3978425819141910832, ptr %stack_var_-56, align 8
  %3 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %3)
  call void @printLine(ptr @global_var_bb678)
  br label %dec_label_pc_6f659

dec_label_pc_6f659:                               ; preds = %dec_label_pc_6f60a, %dec_label_pc_6f5e5
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_6f66e, label %dec_label_pc_6f669

dec_label_pc_6f669:                               ; preds = %dec_label_pc_6f659
  call void @__stack_chk_fail()
  br label %dec_label_pc_6f66e

dec_label_pc_6f66e:                               ; preds = %dec_label_pc_6f669, %dec_label_pc_6f659
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


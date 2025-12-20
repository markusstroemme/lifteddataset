@global_var_b6e90 = external constant [36 x i8]
@global_var_ef02c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2a5a9:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef02c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2a65f, label %dec_label_pc_2a64e

dec_label_pc_2a64e:                               ; preds = %dec_label_pc_2a5a9
  call void @printLine(ptr @global_var_b6e90)
  br label %dec_label_pc_2a65f

dec_label_pc_2a65f:                               ; preds = %dec_label_pc_2a64e, %dec_label_pc_2a5a9
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_2a674, label %dec_label_pc_2a66f

dec_label_pc_2a66f:                               ; preds = %dec_label_pc_2a65f
  call void @__stack_chk_fail()
  br label %dec_label_pc_2a674

dec_label_pc_2a674:                               ; preds = %dec_label_pc_2a66f, %dec_label_pc_2a65f
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


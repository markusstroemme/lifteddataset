@global_var_bb6f0 = external constant [32 x i8]
@global_var_ef06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6f987:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef06c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_6f9fc, label %dec_label_pc_6f9ad

dec_label_pc_6f9ad:                               ; preds = %dec_label_pc_6f987
  call void @printLine(ptr @global_var_bb6f0)
  store i64 3978425819141910832, ptr %stack_var_-56, align 8
  %4 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %4)
  call void @printLine(ptr @global_var_bb6f0)
  br label %dec_label_pc_6f9fc

dec_label_pc_6f9fc:                               ; preds = %dec_label_pc_6f9ad, %dec_label_pc_6f987
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_6fa11, label %dec_label_pc_6fa0c

dec_label_pc_6fa0c:                               ; preds = %dec_label_pc_6f9fc
  call void @__stack_chk_fail()
  br label %dec_label_pc_6fa11

dec_label_pc_6fa11:                               ; preds = %dec_label_pc_6fa0c, %dec_label_pc_6f9fc
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


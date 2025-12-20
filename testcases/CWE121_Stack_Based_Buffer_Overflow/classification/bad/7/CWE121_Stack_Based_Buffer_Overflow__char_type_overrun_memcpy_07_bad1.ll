@global_var_bb6f0 = external constant [32 x i8]
@global_var_ef06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6f85f:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef06c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_6f8d3, label %dec_label_pc_6f885

dec_label_pc_6f885:                               ; preds = %dec_label_pc_6f85f
  call void @printLine(ptr @global_var_bb6f0)
  %4 = call ptr @memcpy(ptr nonnull %stack_var_-56, ptr @global_var_bb6f0, i32 32)
  %5 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %5)
  call void @printLine(ptr @global_var_bb6f0)
  br label %dec_label_pc_6f8d3

dec_label_pc_6f8d3:                               ; preds = %dec_label_pc_6f885, %dec_label_pc_6f85f
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_6f8e8, label %dec_label_pc_6f8e3

dec_label_pc_6f8e3:                               ; preds = %dec_label_pc_6f8d3
  call void @__stack_chk_fail()
  br label %dec_label_pc_6f8e8

dec_label_pc_6f8e8:                               ; preds = %dec_label_pc_6f8e3, %dec_label_pc_6f8d3
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


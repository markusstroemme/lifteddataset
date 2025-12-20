@global_var_bb860 = external constant [32 x i8]
@global_var_ef084 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_70677:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef084, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_706ec, label %dec_label_pc_7069d

dec_label_pc_7069d:                               ; preds = %dec_label_pc_70677
  call void @printLine(ptr @global_var_bb860)
  store i64 3978425819141910832, ptr %stack_var_-56, align 8
  %4 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %4)
  call void @printLine(ptr @global_var_bb860)
  br label %dec_label_pc_706ec

dec_label_pc_706ec:                               ; preds = %dec_label_pc_7069d, %dec_label_pc_70677
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_70701, label %dec_label_pc_706fc

dec_label_pc_706fc:                               ; preds = %dec_label_pc_706ec
  call void @__stack_chk_fail()
  br label %dec_label_pc_70701

dec_label_pc_70701:                               ; preds = %dec_label_pc_706fc, %dec_label_pc_706ec
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


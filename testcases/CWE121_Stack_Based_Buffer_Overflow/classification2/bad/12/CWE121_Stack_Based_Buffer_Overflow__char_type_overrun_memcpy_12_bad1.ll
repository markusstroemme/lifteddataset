@global_var_bb808 = external constant [32 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_701a8:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  call void @printLine(ptr @global_var_bb808)
  br i1 %2, label %dec_label_pc_70221, label %dec_label_pc_701d1

dec_label_pc_701d1:                               ; preds = %dec_label_pc_701a8
  %3 = call ptr @memcpy(ptr nonnull %stack_var_-56, ptr @global_var_bb808, i32 32)
  %4 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %4)
  call void @printLine(ptr @global_var_bb808)
  br label %dec_label_pc_70270

dec_label_pc_70221:                               ; preds = %dec_label_pc_701a8
  store i64 3978425819141910832, ptr %stack_var_-56, align 8
  %5 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %5)
  call void @printLine(ptr @global_var_bb808)
  br label %dec_label_pc_70270

dec_label_pc_70270:                               ; preds = %dec_label_pc_70221, %dec_label_pc_701d1
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_70285, label %dec_label_pc_70280

dec_label_pc_70280:                               ; preds = %dec_label_pc_70270
  call void @__stack_chk_fail()
  br label %dec_label_pc_70285

dec_label_pc_70285:                               ; preds = %dec_label_pc_70280, %dec_label_pc_70270
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a0be9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


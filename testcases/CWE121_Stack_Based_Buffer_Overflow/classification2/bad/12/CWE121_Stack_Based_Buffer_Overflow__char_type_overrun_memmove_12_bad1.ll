@global_var_bbb48 = external constant [32 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_720a0:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  call void @printLine(ptr @global_var_bbb48)
  store i64 3978425819141910832, ptr %stack_var_-56, align 8
  %3 = bitcast ptr %stack_var_-56 to ptr
  call void @printLine(ptr nonnull %3)
  br i1 %2, label %dec_label_pc_72139, label %dec_label_pc_720c9

dec_label_pc_720c9:                               ; preds = %dec_label_pc_720a0
  call void @printLine(ptr inttoptr (i64 3978425819141910832 to ptr))
  br label %dec_label_pc_72188

dec_label_pc_72139:                               ; preds = %dec_label_pc_720a0
  call void @printLine(ptr @global_var_bbb48)
  br label %dec_label_pc_72188

dec_label_pc_72188:                               ; preds = %dec_label_pc_72139, %dec_label_pc_720c9
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_7219d, label %dec_label_pc_72198

dec_label_pc_72198:                               ; preds = %dec_label_pc_72188
  call void @__stack_chk_fail()
  br label %dec_label_pc_7219d

dec_label_pc_7219d:                               ; preds = %dec_label_pc_72198, %dec_label_pc_72188
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


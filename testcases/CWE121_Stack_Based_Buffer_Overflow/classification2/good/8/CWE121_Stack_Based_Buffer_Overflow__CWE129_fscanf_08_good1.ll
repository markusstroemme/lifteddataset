@global_var_b6268 = external constant [21 x i8]
@global_var_b6280 = external constant [36 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_b6240 = external constant [3 x i8]

define i32 @staticReturnsTrue.343() local_unnamed_addr {
dec_label_pc_22081:
  ret i32 1
}

define i32 @staticReturnsFalse.344() local_unnamed_addr {
dec_label_pc_22090:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_22186:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.343()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_221d8, label %dec_label_pc_221b6

dec_label_pc_221b6:                               ; preds = %dec_label_pc_22186
  %3 = load ptr, ptr @global_var_ef090, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_b6240)
  br label %dec_label_pc_221d8

dec_label_pc_221d8:                               ; preds = %dec_label_pc_221b6, %dec_label_pc_22186
  %5 = call i32 @staticReturnsFalse.344()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_22260, label %dec_label_pc_221e6

dec_label_pc_221e6:                               ; preds = %dec_label_pc_221d8
  call void @printLine(ptr @global_var_b6268)
  br label %dec_label_pc_22271

dec_label_pc_22260:                               ; preds = %dec_label_pc_221d8
  call void @printLine(ptr @global_var_b6280)
  br label %dec_label_pc_22271

dec_label_pc_22271:                               ; preds = %dec_label_pc_22260, %dec_label_pc_221e6
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_22286, label %dec_label_pc_22281

dec_label_pc_22281:                               ; preds = %dec_label_pc_22271
  call void @__stack_chk_fail()
  br label %dec_label_pc_22286

dec_label_pc_22286:                               ; preds = %dec_label_pc_22281, %dec_label_pc_22271
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


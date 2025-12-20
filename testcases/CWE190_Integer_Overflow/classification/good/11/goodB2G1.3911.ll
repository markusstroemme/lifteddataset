@global_var_834c8 = external constant [4 x i8]
@global_var_834cc = external constant [21 x i8]
@global_var_834e8 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1739b:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_173ee, label %dec_label_pc_173cc

dec_label_pc_173cc:                               ; preds = %dec_label_pc_1739b
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_834c8, ptr nonnull %stack_var_-32)
  br label %dec_label_pc_173ee

dec_label_pc_173ee:                               ; preds = %dec_label_pc_173cc, %dec_label_pc_1739b
  %5 = call i32 @globalReturnsFalse()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_1740d, label %dec_label_pc_173fc

dec_label_pc_173fc:                               ; preds = %dec_label_pc_173ee
  call void @printLine(ptr @global_var_834cc)
  br label %dec_label_pc_17451

dec_label_pc_1740d:                               ; preds = %dec_label_pc_173ee
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = icmp eq i64 %7, 9223372036854775807
  br i1 %8, label %dec_label_pc_17442, label %dec_label_pc_17420

dec_label_pc_17420:                               ; preds = %dec_label_pc_1740d
  %9 = add i64 %7, 1
  store i64 %9, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_17451

dec_label_pc_17442:                               ; preds = %dec_label_pc_1740d
  call void @printLine(ptr @global_var_834e8)
  br label %dec_label_pc_17451

dec_label_pc_17451:                               ; preds = %dec_label_pc_17442, %dec_label_pc_17420, %dec_label_pc_173fc
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_17466, label %dec_label_pc_17461

dec_label_pc_17461:                               ; preds = %dec_label_pc_17451
  call void @__stack_chk_fail()
  br label %dec_label_pc_17466

dec_label_pc_17466:                               ; preds = %dec_label_pc_17461, %dec_label_pc_17451
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_6a669:
  ret i32 0
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


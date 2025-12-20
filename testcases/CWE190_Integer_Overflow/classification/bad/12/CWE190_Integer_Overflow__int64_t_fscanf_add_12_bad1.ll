@global_var_71720 = external constant [4 x i8]
@global_var_71728 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3338c:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-40, align 8
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_333e1, label %dec_label_pc_333bd

dec_label_pc_333bd:                               ; preds = %dec_label_pc_3338c
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_71720, ptr nonnull %stack_var_-40)
  br label %dec_label_pc_333e9

dec_label_pc_333e1:                               ; preds = %dec_label_pc_3338c
  store i64 2, ptr %stack_var_-40, align 8
  br label %dec_label_pc_333e9

dec_label_pc_333e9:                               ; preds = %dec_label_pc_333e1, %dec_label_pc_333bd
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = load i64, ptr %stack_var_-40, align 8
  br i1 %6, label %dec_label_pc_33411, label %dec_label_pc_333f7

dec_label_pc_333f7:                               ; preds = %dec_label_pc_333e9
  %8 = add i64 %7, 1
  call void @printLongLongLine(i64 %8)
  br label %dec_label_pc_3344d

dec_label_pc_33411:                               ; preds = %dec_label_pc_333e9
  %9 = icmp eq i64 %7, 9223372036854775807
  br i1 %9, label %dec_label_pc_3343e, label %dec_label_pc_33424

dec_label_pc_33424:                               ; preds = %dec_label_pc_33411
  %10 = add i64 %7, 1
  call void @printLongLongLine(i64 %10)
  br label %dec_label_pc_3344d

dec_label_pc_3343e:                               ; preds = %dec_label_pc_33411
  call void @printLine(ptr @global_var_71728)
  br label %dec_label_pc_3344d

dec_label_pc_3344d:                               ; preds = %dec_label_pc_3343e, %dec_label_pc_33424, %dec_label_pc_333f7
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_33462, label %dec_label_pc_3345d

dec_label_pc_3345d:                               ; preds = %dec_label_pc_3344d
  call void @__stack_chk_fail()
  br label %dec_label_pc_33462

dec_label_pc_33462:                               ; preds = %dec_label_pc_3345d, %dec_label_pc_3344d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5a542:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


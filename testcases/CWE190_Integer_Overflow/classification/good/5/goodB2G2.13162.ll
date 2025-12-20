@staticTrue = external local_unnamed_addr global i32
@global_var_71f58 = external constant [4 x i8]
@global_var_71f78 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_375ba:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @staticTrue, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_37657, label %dec_label_pc_37609

dec_label_pc_37609:                               ; preds = %dec_label_pc_375ba
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_71f58, ptr nonnull %stack_var_-32)
  %.pr = load i64, ptr %stack_var_-32, align 8
  %5 = load i32, ptr @staticTrue, align 4
  %6 = icmp eq i32 %5, 0
  %7 = icmp slt i64 %.pr, 1
  %or.cond = or i1 %7, %6
  br i1 %or.cond, label %dec_label_pc_37657, label %dec_label_pc_3761c

dec_label_pc_3761c:                               ; preds = %dec_label_pc_37609
  %8 = icmp sgt i64 %.pr, 4611686018427387902
  br i1 %8, label %dec_label_pc_37648, label %dec_label_pc_3762f

dec_label_pc_3762f:                               ; preds = %dec_label_pc_3761c
  %9 = mul i64 %.pr, 2
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_37657

dec_label_pc_37648:                               ; preds = %dec_label_pc_3761c
  call void @printLine(ptr @global_var_71f78)
  br label %dec_label_pc_37657

dec_label_pc_37657:                               ; preds = %dec_label_pc_375ba, %dec_label_pc_37648, %dec_label_pc_3762f, %dec_label_pc_37609
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_3766c, label %dec_label_pc_37667

dec_label_pc_37667:                               ; preds = %dec_label_pc_37657
  call void @__stack_chk_fail()
  br label %dec_label_pc_3766c

dec_label_pc_3766c:                               ; preds = %dec_label_pc_37667, %dec_label_pc_37657
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


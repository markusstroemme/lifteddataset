@staticTrue = external local_unnamed_addr global i32
@global_var_71f58 = external constant [4 x i8]
@staticFalse = external local_unnamed_addr global i32
@global_var_71f5c = external constant [21 x i8]
@global_var_71f78 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_374f5:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @staticTrue, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_37544, label %dec_label_pc_37522

dec_label_pc_37522:                               ; preds = %dec_label_pc_374f5
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_71f58, ptr nonnull %stack_var_-32)
  br label %dec_label_pc_37544

dec_label_pc_37544:                               ; preds = %dec_label_pc_37522, %dec_label_pc_374f5
  %5 = load i32, ptr @staticFalse, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_3755f, label %dec_label_pc_3754e

dec_label_pc_3754e:                               ; preds = %dec_label_pc_37544
  call void @printLine(ptr @global_var_71f5c)
  br label %dec_label_pc_375a3

dec_label_pc_3755f:                               ; preds = %dec_label_pc_37544
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = icmp slt i64 %7, 1
  br i1 %8, label %dec_label_pc_375a3, label %dec_label_pc_37568

dec_label_pc_37568:                               ; preds = %dec_label_pc_3755f
  %9 = icmp sgt i64 %7, 4611686018427387902
  br i1 %9, label %dec_label_pc_37594, label %dec_label_pc_3757b

dec_label_pc_3757b:                               ; preds = %dec_label_pc_37568
  %10 = mul i64 %7, 2
  call void @printLongLongLine(i64 %10)
  br label %dec_label_pc_375a3

dec_label_pc_37594:                               ; preds = %dec_label_pc_37568
  call void @printLine(ptr @global_var_71f78)
  br label %dec_label_pc_375a3

dec_label_pc_375a3:                               ; preds = %dec_label_pc_37594, %dec_label_pc_3757b, %dec_label_pc_3755f, %dec_label_pc_3754e
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_375b8, label %dec_label_pc_375b3

dec_label_pc_375b3:                               ; preds = %dec_label_pc_375a3
  call void @__stack_chk_fail()
  br label %dec_label_pc_375b8

dec_label_pc_375b8:                               ; preds = %dec_label_pc_375b3, %dec_label_pc_375a3
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


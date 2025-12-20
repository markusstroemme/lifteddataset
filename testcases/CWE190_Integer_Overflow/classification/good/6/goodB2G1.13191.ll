@global_var_71fb4 = external constant [4 x i8]
@global_var_71fd0 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_377e4:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_71fb4, ptr nonnull %stack_var_-32)
  %3 = load i64, ptr %stack_var_-32, align 8
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %dec_label_pc_37892, label %dec_label_pc_37857

dec_label_pc_37857:                               ; preds = %dec_label_pc_377e4
  %5 = icmp sgt i64 %3, 4611686018427387902
  br i1 %5, label %dec_label_pc_37883, label %dec_label_pc_3786a

dec_label_pc_3786a:                               ; preds = %dec_label_pc_37857
  %6 = mul i64 %3, 2
  call void @printLongLongLine(i64 %6)
  br label %dec_label_pc_37892

dec_label_pc_37883:                               ; preds = %dec_label_pc_37857
  call void @printLine(ptr @global_var_71fd0)
  br label %dec_label_pc_37892

dec_label_pc_37892:                               ; preds = %dec_label_pc_37883, %dec_label_pc_3786a, %dec_label_pc_377e4
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_378a7, label %dec_label_pc_378a2

dec_label_pc_378a2:                               ; preds = %dec_label_pc_37892
  call void @__stack_chk_fail()
  br label %dec_label_pc_378a7

dec_label_pc_378a7:                               ; preds = %dec_label_pc_378a2, %dec_label_pc_37892
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


@global_var_724c8 = external constant [4 x i8]
@global_var_724cc = external constant [21 x i8]
@global_var_724e8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2052c:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2057d, label %dec_label_pc_2055b

dec_label_pc_2055b:                               ; preds = %dec_label_pc_2052c
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_724c8, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_2057d

dec_label_pc_2057d:                               ; preds = %dec_label_pc_2055b, %dec_label_pc_2052c
  %5 = call i32 @globalReturnsFalse()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_2059c, label %dec_label_pc_2058b

dec_label_pc_2058b:                               ; preds = %dec_label_pc_2057d
  call void @printLine(ptr @global_var_724cc)
  br label %dec_label_pc_205d5

dec_label_pc_2059c:                               ; preds = %dec_label_pc_2057d
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp slt i16 %7, 1
  br i1 %8, label %dec_label_pc_205d5, label %dec_label_pc_205a5

dec_label_pc_205a5:                               ; preds = %dec_label_pc_2059c
  %9 = icmp sgt i16 %7, 16382
  br i1 %9, label %dec_label_pc_205c6, label %dec_label_pc_205af

dec_label_pc_205af:                               ; preds = %dec_label_pc_205a5
  %10 = mul i16 %7, 2
  %11 = sext i16 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_205d5

dec_label_pc_205c6:                               ; preds = %dec_label_pc_205a5
  call void @printLine(ptr @global_var_724e8)
  br label %dec_label_pc_205d5

dec_label_pc_205d5:                               ; preds = %dec_label_pc_205c6, %dec_label_pc_205af, %dec_label_pc_2059c, %dec_label_pc_2058b
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_205ea, label %dec_label_pc_205e5

dec_label_pc_205e5:                               ; preds = %dec_label_pc_205d5
  call void @__stack_chk_fail()
  br label %dec_label_pc_205ea

dec_label_pc_205ea:                               ; preds = %dec_label_pc_205e5, %dec_label_pc_205d5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_5e30b:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_5e31a:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


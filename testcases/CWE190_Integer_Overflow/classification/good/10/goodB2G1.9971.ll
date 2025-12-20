@global_var_868f8 = external constant [3 x i8]
@global_var_868fb = external constant [21 x i8]
@global_var_86910 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a0 = external local_unnamed_addr global i32
@global_var_bc4f8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_36e61:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load i32, ptr @global_var_bc0a0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_36eaf, label %dec_label_pc_36e8d

dec_label_pc_36e8d:                               ; preds = %dec_label_pc_36e61
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_868f8, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_36eaf

dec_label_pc_36eaf:                               ; preds = %dec_label_pc_36e8d, %dec_label_pc_36e61
  %5 = load i32, ptr @global_var_bc4f8, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_36eca, label %dec_label_pc_36eb9

dec_label_pc_36eb9:                               ; preds = %dec_label_pc_36eaf
  call void @printLine(ptr @global_var_868fb)
  br label %dec_label_pc_36efe

dec_label_pc_36eca:                               ; preds = %dec_label_pc_36eaf
  %7 = load i64, ptr %stack_var_-24, align 8
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %8, 2147483647
  br i1 %9, label %dec_label_pc_36eef, label %dec_label_pc_36ed4

dec_label_pc_36ed4:                               ; preds = %dec_label_pc_36eca
  %10 = mul i64 %7, 4294967296
  %sext = add i64 %10, 4294967296
  %11 = ashr exact i64 %sext, 32
  store i64 %11, ptr %stack_var_-24, align 8
  %12 = trunc i64 %11 to i32
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_36efe

dec_label_pc_36eef:                               ; preds = %dec_label_pc_36eca
  call void @printLine(ptr @global_var_86910)
  br label %dec_label_pc_36efe

dec_label_pc_36efe:                               ; preds = %dec_label_pc_36eef, %dec_label_pc_36ed4, %dec_label_pc_36eb9
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_36f13, label %dec_label_pc_36f0e

dec_label_pc_36f0e:                               ; preds = %dec_label_pc_36efe
  call void @__stack_chk_fail()
  br label %dec_label_pc_36f13

dec_label_pc_36f13:                               ; preds = %dec_label_pc_36f0e, %dec_label_pc_36efe
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


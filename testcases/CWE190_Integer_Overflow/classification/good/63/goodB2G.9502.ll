@global_var_86496 = external constant [16 x i8]
@global_var_864a8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_34b68:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-36, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_34bcd, label %dec_label_pc_34bbc

dec_label_pc_34bbc:                               ; preds = %dec_label_pc_34b68
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36, align 4
  br label %dec_label_pc_34bdc

dec_label_pc_34bcd:                               ; preds = %dec_label_pc_34b68
  call void @printLine(ptr @global_var_86496)
  br label %dec_label_pc_34bdc

dec_label_pc_34bdc:                               ; preds = %dec_label_pc_34bcd, %dec_label_pc_34bbc
  call void @anon0(ptr nonnull %stack_var_-36)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_34bfd, label %dec_label_pc_34bf8

dec_label_pc_34bf8:                               ; preds = %dec_label_pc_34bdc
  call void @__stack_chk_fail()
  br label %dec_label_pc_34bfd

dec_label_pc_34bfd:                               ; preds = %dec_label_pc_34bf8, %dec_label_pc_34bdc
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_34c7e:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 2147483647
  br i1 %3, label %dec_label_pc_34cb6, label %dec_label_pc_34ca0

dec_label_pc_34ca0:                               ; preds = %dec_label_pc_34c7e
  %4 = add i32 %2, 1
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_34cc5

dec_label_pc_34cb6:                               ; preds = %dec_label_pc_34c7e
  call void @printLine(ptr @global_var_864a8)
  br label %dec_label_pc_34cc5

dec_label_pc_34cc5:                               ; preds = %dec_label_pc_34cb6, %dec_label_pc_34ca0
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

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


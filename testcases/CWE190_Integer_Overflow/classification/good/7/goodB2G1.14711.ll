@global_var_88ee8 = external constant [4 x i8]
@global_var_88eec = external constant [21 x i8]
@global_var_88f08 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4eb22:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_bc074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_4eb70, label %dec_label_pc_4eb4e

dec_label_pc_4eb4e:                               ; preds = %dec_label_pc_4eb22
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_88ee8, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_bc074, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_4eb70

dec_label_pc_4eb70:                               ; preds = %dec_label_pc_4eb4e, %dec_label_pc_4eb22
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_4eb8c, label %dec_label_pc_4eb7b

dec_label_pc_4eb7b:                               ; preds = %dec_label_pc_4eb70
  call void @printLine(ptr @global_var_88eec)
  br label %dec_label_pc_4ebc5

dec_label_pc_4eb8c:                               ; preds = %dec_label_pc_4eb70
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_4ebb6, label %dec_label_pc_4eb96

dec_label_pc_4eb96:                               ; preds = %dec_label_pc_4eb8c
  %9 = add i16 %7, 1
  store i16 %9, ptr %stack_var_-20, align 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_4ebc5

dec_label_pc_4ebb6:                               ; preds = %dec_label_pc_4eb8c
  call void @printLine(ptr @global_var_88f08)
  br label %dec_label_pc_4ebc5

dec_label_pc_4ebc5:                               ; preds = %dec_label_pc_4ebb6, %dec_label_pc_4eb96, %dec_label_pc_4eb7b
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_4ebda, label %dec_label_pc_4ebd5

dec_label_pc_4ebd5:                               ; preds = %dec_label_pc_4ebc5
  call void @__stack_chk_fail()
  br label %dec_label_pc_4ebda

dec_label_pc_4ebda:                               ; preds = %dec_label_pc_4ebd5, %dec_label_pc_4ebc5
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


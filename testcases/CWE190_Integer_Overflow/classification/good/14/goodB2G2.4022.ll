@global_var_835b8 = external constant [4 x i8]
@global_var_835d8 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_17cfe:
  %.reg2mem = alloca i32, align 4
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_bc0a4, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_17d4e, label %dec_label_pc_17d2c

dec_label_pc_17d2c:                               ; preds = %dec_label_pc_17cfe
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_835b8, ptr nonnull %stack_var_-32)
  %.pre = load i32, ptr @global_var_bc0a4, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_17d4e

dec_label_pc_17d4e:                               ; preds = %dec_label_pc_17d2c, %dec_label_pc_17cfe
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_17d9d, label %dec_label_pc_17d59

dec_label_pc_17d59:                               ; preds = %dec_label_pc_17d4e
  %8 = load i64, ptr %stack_var_-32, align 8
  %9 = icmp eq i64 %8, 9223372036854775807
  br i1 %9, label %dec_label_pc_17d8e, label %dec_label_pc_17d6c

dec_label_pc_17d6c:                               ; preds = %dec_label_pc_17d59
  %10 = add i64 %8, 1
  store i64 %10, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %10)
  br label %dec_label_pc_17d9d

dec_label_pc_17d8e:                               ; preds = %dec_label_pc_17d59
  call void @printLine(ptr @global_var_835d8)
  br label %dec_label_pc_17d9d

dec_label_pc_17d9d:                               ; preds = %dec_label_pc_17d8e, %dec_label_pc_17d6c, %dec_label_pc_17d4e
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_17db2, label %dec_label_pc_17dad

dec_label_pc_17dad:                               ; preds = %dec_label_pc_17d9d
  call void @__stack_chk_fail()
  br label %dec_label_pc_17db2

dec_label_pc_17db2:                               ; preds = %dec_label_pc_17dad, %dec_label_pc_17d9d
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


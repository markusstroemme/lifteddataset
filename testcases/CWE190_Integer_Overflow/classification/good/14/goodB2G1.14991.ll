@global_var_89138 = external constant [4 x i8]
@global_var_8913c = external constant [21 x i8]
@global_var_89158 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4fedb:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_bc0a4, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_4ff29, label %dec_label_pc_4ff07

dec_label_pc_4ff07:                               ; preds = %dec_label_pc_4fedb
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_89138, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_bc0a4, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_4ff29

dec_label_pc_4ff29:                               ; preds = %dec_label_pc_4ff07, %dec_label_pc_4fedb
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_4ff45, label %dec_label_pc_4ff34

dec_label_pc_4ff34:                               ; preds = %dec_label_pc_4ff29
  call void @printLine(ptr @global_var_8913c)
  br label %dec_label_pc_4ff7e

dec_label_pc_4ff45:                               ; preds = %dec_label_pc_4ff29
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_4ff6f, label %dec_label_pc_4ff4f

dec_label_pc_4ff4f:                               ; preds = %dec_label_pc_4ff45
  %9 = add i16 %7, 1
  store i16 %9, ptr %stack_var_-20, align 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_4ff7e

dec_label_pc_4ff6f:                               ; preds = %dec_label_pc_4ff45
  call void @printLine(ptr @global_var_89158)
  br label %dec_label_pc_4ff7e

dec_label_pc_4ff7e:                               ; preds = %dec_label_pc_4ff6f, %dec_label_pc_4ff4f, %dec_label_pc_4ff34
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_4ff93, label %dec_label_pc_4ff8e

dec_label_pc_4ff8e:                               ; preds = %dec_label_pc_4ff7e
  call void @__stack_chk_fail()
  br label %dec_label_pc_4ff93

dec_label_pc_4ff93:                               ; preds = %dec_label_pc_4ff8e, %dec_label_pc_4ff7e
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


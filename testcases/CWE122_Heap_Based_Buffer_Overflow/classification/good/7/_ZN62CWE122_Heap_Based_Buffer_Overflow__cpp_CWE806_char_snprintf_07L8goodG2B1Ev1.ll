@staticFive = external local_unnamed_addr global i32
@global_var_479f7 = external constant [3 x i8]
@global_var_479fa = external constant [21 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_33795:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @staticFive, align 4
  %3 = icmp eq i32 %2, 5
  br i1 %3, label %dec_label_pc_337da, label %dec_label_pc_337c9

dec_label_pc_337c9:                               ; preds = %dec_label_pc_33795
  call void @printLine(ptr @global_var_479fa)
  br label %dec_label_pc_337fb

dec_label_pc_337da:                               ; preds = %dec_label_pc_33795
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 49)
  %6 = add i64 %1, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_337fb

dec_label_pc_337fb:                               ; preds = %dec_label_pc_337da, %dec_label_pc_337c9
  %8 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %9 = call i32 @strlen(ptr %8)
  %10 = bitcast ptr %stack_var_-72 to ptr
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %10, i32 %9, ptr @global_var_479f7, ptr %8)
  call void @printLine(ptr %8)
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %dec_label_pc_3387e, label %dec_label_pc_33872

dec_label_pc_33872:                               ; preds = %dec_label_pc_337fb
  %13 = zext i32 %9 to i64
  %14 = inttoptr i64 %1 to ptr
  %15 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %14, ptr %15)
  br label %dec_label_pc_3387e

dec_label_pc_3387e:                               ; preds = %dec_label_pc_33872, %dec_label_pc_337fb
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_33893, label %dec_label_pc_3388e

dec_label_pc_3388e:                               ; preds = %dec_label_pc_3387e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_33893

dec_label_pc_33893:                               ; preds = %dec_label_pc_3388e, %dec_label_pc_3387e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@goodG2B1Static = external local_unnamed_addr global i32
@global_var_4c46c = external constant [21 x i8]

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_29e3e:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @goodG2B1Static, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_29e69, label %dec_label_pc_29e58

dec_label_pc_29e58:                               ; preds = %dec_label_pc_29e3e
  call void @printLine(ptr @global_var_4c46c)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_29e8f

dec_label_pc_29e69:                               ; preds = %dec_label_pc_29e3e
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_29e88, label %dec_label_pc_29e7e

dec_label_pc_29e7e:                               ; preds = %dec_label_pc_29e69
  call void @exit(i32 -1)
  unreachable

dec_label_pc_29e88:                               ; preds = %dec_label_pc_29e69
  %5 = bitcast ptr %2 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_29e8f

dec_label_pc_29e8f:                               ; preds = %dec_label_pc_29e88, %dec_label_pc_29e58
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_29e95:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @goodG2B1Static, align 4
  %1 = call ptr @anon0(ptr null)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strncpy(ptr %1, ptr nonnull %4, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  call void @printLine(ptr %1)
  %8 = bitcast ptr %1 to ptr
  call void @free(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_29f3c, label %dec_label_pc_29f37

dec_label_pc_29f37:                               ; preds = %dec_label_pc_29e95
  call void @__stack_chk_fail()
  br label %dec_label_pc_29f3c

dec_label_pc_29f3c:                               ; preds = %dec_label_pc_29f37, %dec_label_pc_29e95
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


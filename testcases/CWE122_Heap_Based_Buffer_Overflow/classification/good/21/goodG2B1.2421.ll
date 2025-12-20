@goodG2B1Static = external local_unnamed_addr global i32
@global_var_2d00c = external constant [21 x i8]

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_163a3:
  %0 = load i32, ptr @goodG2B1Static, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_163ce, label %dec_label_pc_163bd

dec_label_pc_163bd:                               ; preds = %dec_label_pc_163a3
  call void @printLine(ptr @global_var_2d00c)
  br label %dec_label_pc_163ef

dec_label_pc_163ce:                               ; preds = %dec_label_pc_163a3
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_163ef

dec_label_pc_163ef:                               ; preds = %dec_label_pc_163ce, %dec_label_pc_163bd
  ret ptr %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_163f5:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_1642f, label %dec_label_pc_16425

dec_label_pc_16425:                               ; preds = %dec_label_pc_163f5
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1642f:                               ; preds = %dec_label_pc_163f5
  %4 = bitcast ptr %1 to ptr
  store i32 0, ptr @goodG2B1Static, align 4
  %5 = call ptr @anon0(ptr %4)
  store i64 0, ptr %stack_var_-72, align 8
  %6 = bitcast ptr %stack_var_-72 to ptr
  %7 = call ptr @strcpy(ptr nonnull %6, ptr %5)
  call void @printLine(ptr %5)
  %8 = bitcast ptr %5 to ptr
  call void @free(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_164bf, label %dec_label_pc_164ba

dec_label_pc_164ba:                               ; preds = %dec_label_pc_1642f
  call void @__stack_chk_fail()
  br label %dec_label_pc_164bf

dec_label_pc_164bf:                               ; preds = %dec_label_pc_164ba, %dec_label_pc_1642f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

